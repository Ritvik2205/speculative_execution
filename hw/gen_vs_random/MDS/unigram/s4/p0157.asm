.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe si, cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
or dl, dil
and dl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
cmovo rbx, rax
bt ecx, 84
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
bts rcx, 115
xor eax, 73
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 49
cmovnb dx, cx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
bt edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 86
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
