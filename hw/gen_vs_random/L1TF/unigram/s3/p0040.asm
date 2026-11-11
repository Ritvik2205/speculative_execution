.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
lea rbx, qword ptr [rcx]
imul ax
or ax, -18131
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 46
lea bx, qword ptr [rcx + rcx + 78]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
movsx rax, ax
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
setns cl
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
setnl dil
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
