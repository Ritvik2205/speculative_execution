.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
setbe dl
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
sub dl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
cmp cl, al
adc bl, 88
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor rax, 29
sbb dl, 127
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
or cl, dl
setnle bl
imul rcx
jmp .bb_0.2
.bb_0.2:
xchg bl, al
lea rsi, qword ptr [rdx + rcx + 36993]
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
adc eax, 1725322202
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
