.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
cmovnz eax, eax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
or cx, 39
and al, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rdi, rax
cmovo edi, edx
btc ax, bx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
or rbx, -72
bt rax, rdi
cmovnp bx, si
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and al, 54 # instrumentation
cmovnp di, di
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
bts ax, di
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
cmovnz ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
