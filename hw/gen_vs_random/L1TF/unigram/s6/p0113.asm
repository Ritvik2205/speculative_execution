.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, di
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 6
lea eax, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
test dx, 1
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
add sil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
sub dl, -34
add bl, 89 # instrumentation
sbb cl, al
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
lea eax, qword ptr [rdx + rdx + 30]
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
imul rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
