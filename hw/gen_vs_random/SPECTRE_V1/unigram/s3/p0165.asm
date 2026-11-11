.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
lea rax, qword ptr [rcx]
neg edx
sub cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
cmovle ecx, ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
bt edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
