.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 83
or bl, sil
lea dx, qword ptr [rax + rdx + 68]
add bl, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
cmovno rax, rsi
jmp .bb_0.1
.bb_0.1:
movzx edx, dx
movsx rcx, sil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
add dl, -121 # instrumentation
movsx di, dl
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rax]
lea eax, qword ptr [rcx + rax]
cmovl ax, cx
xchg di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
