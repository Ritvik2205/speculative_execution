.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
imul bx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
mul di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
or si, -97
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 66
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 30
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 100
setle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
