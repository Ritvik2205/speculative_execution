.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
or dl, cl
sub edi, 65
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
lea rax, qword ptr [rdx + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub rcx, 13
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 83
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
cmp cl, dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
