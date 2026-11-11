.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
or cl, al
lea rax, qword ptr [rdi + rbx + 13]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
or al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
lea rdx, qword ptr [rax + rax + 36]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rsi]
test eax, 14
imul bl
cmovp ebx, eax
lea rcx, qword ptr [rbx + rdi]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
