.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 18
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 44
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
lea di, qword ptr [rax + rdx + 73]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
test bl, dil
mov bl, bl
imul ax, di
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 3
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
