.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rax, rbx
dec rbx
setbe cl
not rsi
add dl, 8
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
add al, -73 # instrumentation
setnbe al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 99
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
lea eax, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 68
cmovno rcx, rbx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
