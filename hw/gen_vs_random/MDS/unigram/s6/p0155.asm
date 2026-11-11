.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
xor sil, bl
cmovs eax, esi
not bl
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and dil, dil
or esi, eax
bt eax, ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
jmp .bb_0.1
.bb_0.1:
test sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
test ebx, -2015966884
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
