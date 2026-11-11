.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
or eax, 1725503461
and al, 53 # instrumentation
cmovnl rax, rax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
cmovo ebx, eax
cmovnz rdx, rax
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor ecx, edi
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and bl, dl
cmovs si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
