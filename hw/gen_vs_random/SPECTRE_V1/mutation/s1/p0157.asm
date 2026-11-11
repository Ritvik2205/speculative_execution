.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
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
xchg bl, al
lea rsi, qword ptr [rdx + rcx + 57579]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
xor al, -74
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add bl, -43 # instrumentation
adc si, -23
cmovle edi, ecx
cmovle rcx, rbx
or dl, sil
adc eax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
