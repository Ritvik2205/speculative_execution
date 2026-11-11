.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
setns dl
cmovnbe cx, ax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 13
dec bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
or dl, dil
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
