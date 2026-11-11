.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
cmovz edi, esi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 72
jmp .bb_0.1
.bb_0.1:
add dl, 6 # instrumentation
cmovl ecx, edx
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
cmovs dx, bx
xchg edi, esi
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
lea si, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], esi
imul rcx
add bl, 113 # instrumentation
setbe sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
test di, si
or al, -57
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
cmovb dx, bx
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
add cl, dl
bts ecx, 225
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
cmovz esi, ebx
cmp rax, 108211639
sbb ebx, 9
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
lea bx, qword ptr [rsi + rsi + 53131]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
