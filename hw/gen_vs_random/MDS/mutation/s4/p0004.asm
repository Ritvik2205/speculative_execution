.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
btc ecx, ebx
and cl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and dl, bl
and dl, dl
or edi, eax
btr rbx, 63
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or al, -75
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and bl, -28 # instrumentation
cmovl rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
cmovl rbx, rdx
and rbx, rsi
btc bx, ax
and cl, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
