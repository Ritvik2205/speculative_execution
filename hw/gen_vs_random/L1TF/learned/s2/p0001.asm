.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
lea di, qword ptr [rbx]
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
cmp bl, dl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
and al, dl
jmp .bb_0.1
.bb_0.1:
test al, -104
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
