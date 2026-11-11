.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
add cl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
lea edi, qword ptr [rbx]
adc cx, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
cmovb edi, edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
movsx rdx, dx
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
sbb al, dl
cmovs di, dx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
adc esi, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
