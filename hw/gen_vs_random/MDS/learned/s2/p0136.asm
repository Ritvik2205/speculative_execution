.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
btr dx, cx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test cl, -86
or bx, 37
test eax, 298249463
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and bl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and cl, al
jmp .bb_0.1
.bb_0.1:
or dl, cl
or al, -58
and bx, 32
and sil, -9
and sil, sil
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
