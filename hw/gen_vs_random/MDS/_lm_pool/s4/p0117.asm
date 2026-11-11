.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor cl, dl
test al, -81
and rax, -636362975
or al, -58
btr bx, di
xor rax, -1128378406
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
bt si, bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and al, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
