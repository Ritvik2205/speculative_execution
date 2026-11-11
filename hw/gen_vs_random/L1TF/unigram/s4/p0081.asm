.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, 11
sub rdi, rsi
cmovb esi, eax
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
add sil, dil
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
not al
or al, dl
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
cmovb di, dx
sub rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
