.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, bl
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
add sil, dl
add cl, -93 # instrumentation
not rdi
imul dl
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
