.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
cmovs edx, edx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx + rcx + 72]
sbb rax, -1477844571
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
bt ecx, 40
add al, 71 # instrumentation
setp al
btr rbx, 72
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and al, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
