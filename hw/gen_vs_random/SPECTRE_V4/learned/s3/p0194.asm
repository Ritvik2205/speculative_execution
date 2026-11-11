.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
bts si, 30
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 63
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, 56
or dl, dl
btr bx, ax
cmovnb ecx, eax
test eax, 1561062795
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 53
dec bl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
add dl, 31 # instrumentation
cmovnl bx, bx
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
