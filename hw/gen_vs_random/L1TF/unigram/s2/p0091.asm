.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
xor edi, ebx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
not rdx
btr ecx, ebx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 41
or bl, 61
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
lea si, qword ptr [rsi + rbx]
cmovo rdx, rcx
cmp bl, dil
btc eax, eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
lea dx, qword ptr [rbx + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
