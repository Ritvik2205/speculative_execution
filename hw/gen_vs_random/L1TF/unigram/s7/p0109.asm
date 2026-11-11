.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
lea rsi, qword ptr [rax]
adc cx, ax
mul sil
movsx edi, si
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
add dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 19
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
or ax, 11821
add sil, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
