.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and ax, 19740
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
or sil, cl
xor dil, -70
and bl, bl
test dl, 48
test sil, 41
or eax, 678817098
test eax, 1287331633
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
xor bl, cl
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
