.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 33
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and bl, 68
test dil, al
and sil, -56
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and dl, dl
xor rcx, 71
or sil, dil
test bl, dil
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and esi, 3
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
