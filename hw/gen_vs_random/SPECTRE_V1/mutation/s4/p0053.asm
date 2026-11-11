.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, cl
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
imul si, si
cmp al, dl
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
not cx
lea ax, qword ptr [rcx + rbx + 26263]
xor cx, cx
lea ax, qword ptr [rax]
lea cx, qword ptr [rsi + rdx + 61792]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
