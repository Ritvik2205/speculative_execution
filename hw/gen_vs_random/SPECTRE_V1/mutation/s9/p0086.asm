.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
sub al, cl
cmp al, dl
imul si, si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax]
xor cx, cx
lea cx, qword ptr [rsi + rdx + 61792]
not cx
not di
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
lea ax, qword ptr [rcx + rbx + 26263]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
