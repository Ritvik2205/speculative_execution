.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
setp dl
test bx, dx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs bx, si
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
lea edi, qword ptr [rdi + rdx + 78]
cmovnz rbx, rdi
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
cbw
or rcx, 16
add ax, ax
dec ecx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 76
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
