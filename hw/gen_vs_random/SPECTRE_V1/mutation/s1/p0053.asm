.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
imul si, si
sub al, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
not cx
xor cx, cx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
lea ax, qword ptr [rcx + rbx + 26263]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
lea ax, qword ptr [rax]
not di
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
lea cx, qword ptr [rsi + rdx + 61792]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
