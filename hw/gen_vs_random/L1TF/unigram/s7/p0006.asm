.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
or dil, -113
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
add bl, 37 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 100
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
jmp .bb_0.1
.bb_0.1:
cmp edx, 99
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
cmovb rax, rbx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xor bl, bl
imul rcx, rdi, 18
imul si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
