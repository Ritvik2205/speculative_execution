.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
cmovp eax, ebx
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
setnb dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
lea ebx, qword ptr [rax]
movzx ebx, di
btc rax, rbx
movsx si, dl
xor eax, -764881786
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
lea ecx, qword ptr [rbx + rsi + 12]
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
