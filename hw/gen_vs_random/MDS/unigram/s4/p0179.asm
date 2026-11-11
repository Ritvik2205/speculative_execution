.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
or si, si
btr ecx, ecx
cmovb rdi, rax
test dil, 46
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
xor al, bl
and bl, 49 # instrumentation
cmovp rcx, rbx
btr edi, ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and sil, -56
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
xor al, al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 68
btc rdx, rsi
or sil, al
and bl, sil
bts rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
