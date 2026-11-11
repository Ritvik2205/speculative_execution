.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 120
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
add bl, 62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
not bx
add al, 98 # instrumentation
inc al
lea cx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 15
jmp .bb_0.1
.bb_0.1:
or ax, ax
xor dx, 34
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
cmovb cx, si
lea rbx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
lea ax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
