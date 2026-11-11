.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp di, cx
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and al, -64 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and dl, -7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 85
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
bt esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
xor edx, 59
btc esi, 226
cmovnb rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 60
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or si, 0b1000000000000000 # instrumentation
bsr si, si
xor rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
