.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
cmovnz bx, cx
and bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
xor al, -119
xor edx, 75
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 15
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
bts rdi, 51
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 50
and al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
cmovno eax, edx
btc cx, 104
test rbx, 21
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
