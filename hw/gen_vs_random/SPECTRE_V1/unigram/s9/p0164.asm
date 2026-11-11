.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
lea cx, qword ptr [rsi + rcx + 20]
setle al
cmp cl, 48
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
seto cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -73 # instrumentation
btr bx, ax
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 98
sub bl, al
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 14
adc sil, dil
lea ebx, qword ptr [rcx + rcx + 43124]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
