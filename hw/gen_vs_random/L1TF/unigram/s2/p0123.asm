.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, esi
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
adc al, dl
add dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
imul cl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or ax, 31571
jmp .bb_0.1
.bb_0.1:
bts esi, ebx
cmovnl cx, ax
add dl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 34
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
lea eax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
