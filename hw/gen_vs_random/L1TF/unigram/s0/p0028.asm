.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -22
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
seto dl
xchg rbx, rax
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
cmp di, 45
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 75
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
lea edi, qword ptr [rbx + rdi + 23]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 57
sub bl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
