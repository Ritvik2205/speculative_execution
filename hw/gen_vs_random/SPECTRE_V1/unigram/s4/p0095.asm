.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 32
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
sets sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
imul rsi, rcx, 25
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
test si, dx
add al, -53 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 35
cmovnb rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], 55
setno cl
or di, 0b1000000000000000 # instrumentation
bsf di, di
lea rcx, qword ptr [rcx + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
