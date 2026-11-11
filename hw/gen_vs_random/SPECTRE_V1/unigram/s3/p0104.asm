.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
or bl, dil
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 8
add dl, 116 # instrumentation
cmovbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub rbx, -128
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
sets bl
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
