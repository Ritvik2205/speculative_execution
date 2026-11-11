.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle sil
and al, -54
add dil, dl
lea eax, qword ptr [rcx]
test al, 84
mul dl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
xchg dil, dil
and bl, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
cmovle ecx, ebx
cmovnle ax, dx
imul cx, cx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
