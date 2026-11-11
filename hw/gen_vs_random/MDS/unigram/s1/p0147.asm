.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor dl, dl
and bl, bl
cmovns rcx, rdx
and cl, 78 # instrumentation
cmovs cx, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
or cl, cl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
cmovbe edi, eax
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
xor rsi, -117
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
xor dl, al
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and al, -67 # instrumentation
cmovnle rbx, rax
or ebx, -15
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
