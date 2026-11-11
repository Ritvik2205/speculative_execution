.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
cmovns rdi, rcx
bts ecx, 3
cmovnbe ebx, ecx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 87
xor cl, dil
xor sil, 94
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
test eax, 158941032
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
btc rbx, 35
test bl, sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
