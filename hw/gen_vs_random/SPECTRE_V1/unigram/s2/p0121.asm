.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
xor rdi, 89
add sil, -73 # instrumentation
setnbe sil
lea rbx, qword ptr [rbx + rdx + 71]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rsi, rsi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 49
movsx dx, cl
add ecx, ebx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 98
sbb bl, 67
adc dl, 45
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
not dl
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
