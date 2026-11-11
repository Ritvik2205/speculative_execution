.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
xor dil, al
imul al
lea rax, qword ptr [rbx + rcx + 61]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
add bl, 111 # instrumentation
cmovs rcx, rcx
btc esi, eax
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
imul dx, si, 84
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rbx, -64
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
add dil, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
