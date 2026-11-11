.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and bl, dil
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 54
or dl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
test ecx, -1843375753
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 18
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
cmovno rdi, rsi
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
or bx, 12
or al, 54
btc rdx, 66
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
or bl, al
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
