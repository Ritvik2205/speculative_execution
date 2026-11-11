.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rdx
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
not sil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
cmovno rdx, rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and al, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
btr rcx, 41
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
cmovl rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
