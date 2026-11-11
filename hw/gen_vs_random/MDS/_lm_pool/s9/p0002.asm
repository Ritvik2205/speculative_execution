.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
xor di, 40
or dil, cl
xor cl, 83
and cl, sil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test bl, -14
xor al, bl
xor dil, dl
test al, -7
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
xor bl, -88
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
