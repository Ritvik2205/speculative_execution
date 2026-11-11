.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 193
and dl, dl
and cl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and dl, bl
or edi, eax
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
cmovl rbx, rdx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rbx, rsi
and cl, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
btc ecx, ebx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
btc bx, ax
and bl, -28 # instrumentation
cmovl rdi, rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
or al, -78
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
