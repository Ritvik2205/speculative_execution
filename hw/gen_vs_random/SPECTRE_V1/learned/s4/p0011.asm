.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
inc bl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or dl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
cmovo rsi, rdx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
