.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
sub al, cl
cmp al, dl
imul si, si
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
lea ax, qword ptr [rax]
lea cx, qword ptr [rsi + rdx + 61792]
not cx
lea ax, qword ptr [rcx + rbx + 26263]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
xor cx, cx
not di
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor dl, dl
cmp eax, -563371897
and si, cx
add rax, -845342150
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
