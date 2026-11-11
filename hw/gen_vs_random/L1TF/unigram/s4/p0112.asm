.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
xor esi, ebx
btr rbx, 59
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
imul ax
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
neg rax
cmovo rdx, rax
btc cx, si
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 66
lea rbx, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
