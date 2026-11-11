.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
test al, 66
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor dl, sil
and rax, -636362975
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
not al
or al, 16
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or al, 16
and al, al
xor ax, 31969
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
