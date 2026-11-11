.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul si, si
cmp al, dl
sub al, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx + rbx + 26263]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
not di
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
xor cx, cx
lea cx, qword ptr [rsi + rdx + 61792]
not cx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
lea ax, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
