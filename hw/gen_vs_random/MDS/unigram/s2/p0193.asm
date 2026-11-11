.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rdx, rbx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 19
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
cmovs ecx, edx
and dl, 60 # instrumentation
cmovno ecx, ecx
bt rax, rsi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
and bl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 66
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
xor dl, dl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
