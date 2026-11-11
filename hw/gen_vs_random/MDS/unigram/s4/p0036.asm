.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
bt rdx, rbx
or ax, -4635
and esi, 32
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 29
and dl, 60 # instrumentation
cmovno edi, edi
cmovo rcx, rax
bt ecx, 32
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and cx, dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
or rdx, 1
cmovz rax, rdi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
bts dx, 167
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 50
bt eax, edx
test bl, sil
bt edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
