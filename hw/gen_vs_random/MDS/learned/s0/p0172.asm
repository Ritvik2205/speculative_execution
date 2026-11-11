.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edi, edi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and ax, -16061
or dl, bl
xor al, dil
or dl, -31
and sil, dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or cl, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
or dil, -41
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
